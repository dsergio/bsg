########## David Sergio 00873694

# Implementation of the logistic regression with L2 regularization and supports stachastic gradient descent


import numpy as np
import math
import sys
sys.path.append("..")

from src.utils import MyUtils


class LogisticRegression:
    def __init__(self, verbose = False):
        self.w = None
        self.degree = 1
        
        self.write_log = False
        self.log_label = "results"
        self.MSE = []
        self.verbose = verbose
        
        self.log_dir = "../log"

    
    def initialize_log(self, label, X_test, y_test, in_sample = True, out_sample = True):
        self.write_log = True
        self.log_label = label
        self.X_test = X_test
        self.y_test = y_test
        self.log_in_sample = in_sample
        self.log_out_sample = out_sample
        with open(self.log_dir + "/" + self.log_label + ".csv", "w") as f:
            header = "Model,Degree,Lam,Eta,Iterations,Minibatch-Size"
            if self.log_in_sample:
                header += ",In-sample Error"
            if self.log_out_sample:
                header += ",Out-sample Error"
            f.write(header + "\n")
    
    def _log_results(self, model, degree, lam, eta, iterations, minibatch_size):
        ''' Log the results of the model to a file. 
            parameters:
                model: the model used, either "CF" or "GD"
                degree: the degree of the Z-space
                lam: the lam value used for regularization
                eta: the learning rate 
                iterations: the number of iterations used in the model
        '''
        out_sample = self.error(self.X_test, self.y_test)
        in_sample = self.error(self.X, self.y)
        with open(self.log_dir + "/" + self.log_label + ".csv", "a") as f:
            row = f"{model},{degree},{lam},{eta},{iterations},{minibatch_size}"
            if self.log_in_sample:
                row += f",{in_sample}"
            if self.log_out_sample:
                row += f",{out_sample}"
            f.write(row + "\n")
    
    
    def fit(self, X, y, lam = 0, eta = 0.01, iterations = 1000, SGD = False, mini_batch_size = 1, degree = 1):
        ''' Save the passed-in degree of the Z space in `self.degree`. 
            Compute the fitting weight vector and save it `in self.w`. 
         
            Parameters: 
                X: n x d matrix of samples; every sample has d features, excluding the bias feature. 
                y: n x 1 vector of lables. Every label is +1 or -1. 
                lam: the L2 parameter for regularization
                eta: the learning rate used in gradient descent
                iterations: the number of iterations used in GD/SGD. Each iteration is one epoch if batch GD is used. 
                SGD: True - use SGD; False: use batch GD
                mini_batch_size: the size of each mini batch size, if SGD is True.  
                degree: the degree of the Z space
        '''

        # remove the pass statement and fill in the code. 
        
        #Hint: 
    
        self.degree = degree
        self.X = X
        self.y = y
        
        #X --> Z(X) --> add bias column --> X
        #init self.w same as you did for linear regression. The self.w size is d x 1.
        
        #if SGD is False: 
        #    for i in range(iterations): 
        #         update self.w as what the slides shows in the vectorized form. 
        #else: # SGD is True
        #    for i in range(iterations): 
        #         update self.w as what the slides shows in the vectorized form, using minibatches.     
                    
        X = MyUtils.z_transform(X, degree = self.degree)
        X = np.insert(X, 0, 1, axis=1)
        n, d = X.shape
        self.w = np.zeros((d, 1))

        if not SGD:
            for i in range(iterations):
                signals = X @ self.w
                labels = LogisticRegression._v_sigmoid(signals)
                E = X.T @ (labels - y) / n

                a = (1 - eta * lam / n)
                b = eta / n
                self.w = a * self.w - b * E

                # self.w = self.w - eta * E
            
            if (self.write_log):
                self._log_results("NonSGD", degree, lam, eta, iterations, mini_batch_size)

        else:
            for i in range(iterations):
                for j in range(0, n, mini_batch_size):
                    signals = X[j:j+mini_batch_size] @ self.w
                    labels = LogisticRegression._v_sigmoid(signals)
                    E = X[j:j+mini_batch_size].T @ (labels - y[j:j+mini_batch_size]) / mini_batch_size
                    
                    a = (1 - eta * lam / mini_batch_size)
                    b = eta / mini_batch_size
                    self.w = a * self.w - b * E

                    # self.w = self.w - eta * E
            
            if (self.write_log):
                self._log_results("SGD", degree, lam, eta, iterations, mini_batch_size)
        
    
    def predict(self, X):
        ''' parameters:
                X: n x d matrix; n samples; each has d features, excluding the bias feature. 
            return: 
                n x 1 matrix: each row is the probability of each sample being positive. 
        '''
    
        # remove the pass statement and fill in the code. 
        
        # Hint: 
        # X -> Z(X) -> add bias column --> X
        # Calculate the signals: X@self.w
        # Calcuate the sigmoid function of the signals. 
        # Do these calculations without using loops. 
        
        X = MyUtils.z_transform(X, degree = self.degree)
        X = np.insert(X, 0, 1, axis=1)
        signals = X @ self.w
        return LogisticRegression._v_sigmoid(signals)
        
        
        
    
    def error(self, X, y):
        ''' parameters:
                X: n x d matrix; n samples; each has d features, excluding the bias feature. 
                y: n x 1 matrix; each row is a labels of +1 or -1.
            return:
                The number of misclassified samples. 
                Every sample whose sigmoid value > 0.5 is given a +1 label; otherwise, a -1 label.
        '''

        # remove the pass statement and fill in the code.         

        # Hint: 
        # X -> Z(X) -> add bias column --> X
        # X @ self.w gives the siglas. 
        # If the signal is positive or zero, the predicated label is +1; otherwise, the predicated label is -1. 
        # The error is the number of mismatched labels. 
        # Do all these computations without using loops. 
        
        X = MyUtils.z_transform(X, degree = self.degree)
        X = np.insert(X, 0, 1, axis=1)

        signals = X @ self.w
        labels = np.where(LogisticRegression._v_sigmoid(signals) > 0.5, 1, -1)
        return np.sum(labels != y)
    
    

    def _v_sigmoid(s):
        '''
            vectorized sigmoid function
            
            s: n x 1 matrix. Each element is real number represents a signal. 
            return: n x 1 matrix. Each element is the sigmoid function value of the corresponding signal. 
        '''
            
        # Hint: use the np.vectorize API to vectorize the _sigmoid method. 

        # remove the pass statement and fill in the code.         
        
        return np.vectorize(LogisticRegression._sigmoid)(s)
    
    
        
    def _sigmoid(s):
        ''' s: a real number
            return: the sigmoid function value of the input signal s
        '''

        # remove the pass statement and fill in the code.             
        s = np.clip(s, -1000, 1000)
        return 1 / (1 + np.exp(-s))
    
