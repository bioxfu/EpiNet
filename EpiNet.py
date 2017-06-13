
# coding: utf-8

# In[2]:

import numpy as np
import matplotlib.pyplot as plt
from sklearn import metrics
from keras.models import Sequential
from keras.layers.core import Dense, Dropout, Activation, Flatten
from keras.layers.convolutional import Conv1D, MaxPooling1D
from keras.optimizers import Adam
from keras.utils import np_utils
import sys

# In[3]:

# define the ConvNet
class EpiNet:
    @staticmethod
    def build(input_shape, classes):
        model = Sequential()
        # CONV => RELU => POOL => DROPOUT
        model.add(Conv1D(50, kernel_size=5, padding='same', input_shape=input_shape))
        model.add(Activation('relu'))
        model.add(MaxPooling1D(pool_size=5, strides=1))
        model.add(Dropout(0.5))
        # Flatten => RELU layers
        model.add(Flatten())
        model.add(Dense(625))
        model.add(Activation('relu'))
        model.add(Dense(125))
        model.add(Activation('relu'))
        # a softmax classifier
        model.add(Dense(classes))
        model.add(Activation('softmax'))
        return model


# In[37]:

# set parameters
NUM_EPOCH = 20
BATCH_SIZE = 512
VERBOSE = 1
OPTIMIZER = Adam()
VALIDATION_SPLIT = 0.2
NUM_CLASSES = 2
INPUT_X = sys.argv[1]
INPUT_y = sys.argv[2]


# In[38]:

# load data
X = np.load(INPUT_X)
y = np.genfromtxt(INPUT_y)


# In[39]:

# remove the empty matrix
with_signal = []
for i in range(X.shape[0]):
    if X[i,:,:].max() > 0:
        with_signal.append(i)
        
X = X[with_signal,:,:]
y = y[with_signal]
print(X.shape)
print(y.shape)

INPUT_SHAPE = (X.shape[1], X.shape[2])


# In[40]:

# normalize matrix
for i in range(X.shape[0]):
    X[i,:,:] /= X[i,:,:].max()


# In[41]:

# randomly split the dataset into training and test subset
np.random.seed(1234)
rand_idx = np.random.permutation(X.shape[0])
n = len(rand_idx) * 2/3
y_train, y_test = np.split(y[rand_idx], [n])
X_train, X_test = np.vsplit(X[rand_idx], [n])
print(X_train.shape)
print(y_train.shape)
print(X_test.shape)
print(y_test.shape)


# In[42]:

# convert class vectors to binary class matrices
y_train = np_utils.to_categorical(y_train, NUM_CLASSES)
y_test = np_utils.to_categorical(y_test, NUM_CLASSES)


# In[43]:

# initialize the optimizer and model
model = EpiNet.build(input_shape=INPUT_SHAPE, classes=NUM_CLASSES)
model.summary()


# In[44]:

model.compile(loss='categorical_crossentropy', optimizer=OPTIMIZER, metrics=['accuracy'])


# In[45]:

history = model.fit(X_train, y_train, batch_size=BATCH_SIZE, epochs=NUM_EPOCH, verbose=VERBOSE, validation_split=VALIDATION_SPLIT)


# In[46]:

score = model.evaluate(X_test, y_test)
print
print('Test accuracy:', score[1])


# In[49]:

y_pred = model.predict(X_test)
fpr, tpr, thresholds = metrics.roc_curve(y_test[:,0], y_pred[:,0])
print('AUC:', metrics.auc(fpr, tpr))


# In[48]:

# summarize history for accuracy
#plt.plot(history.history['acc'])
#plt.plot(history.history['val_acc'])
#plt.title('model accuracy')
#plt.ylabel('accuracy')
#plt.xlabel('epoch')
#plt.legend(['train', 'test'], loc='upper left')
#plt.show()


# In[ ]:



