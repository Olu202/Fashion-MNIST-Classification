# Fashion-MNIST-Classification
Ensure you have Python installed on your system. You will also need to install the following dependencies:

tensorflow: TensorFlow library for deep learning
keras: High-level neural networks API
You can install these dependencies using pip:

pip install tensorflow keras matplotlib

Step 2: Run the Python Script
Copy the provided Python script into a Python file (e.g., cnn_fashion_mnist.py).
Run the script using a Python interpreter (e.g., Anaconda, Python virtual environment).

python cnn_fashion_mnist.py
The script performs the following tasks:

Loads the Fashion MNIST dataset.
Builds a Convolutional Neural Network (CNN) model using Keras.
Compiles and trains the model using the training data.
Makes predictions for two images from the test set and displays the predictions along with the actual labels.

Steps for R script
Step 1: Install Dependencies
Ensure you have R installed on your system. You will also need to install the following dependencies:

keras: R interface to Keras for deep learning
reticulate: Interface to Python modules, used to interact with TensorFlow and Keras
You can install these dependencies using the following commands in R:

install.packages("keras")
install.packages("reticulate")
Step 2: Run the R Script
Copy the provided R script into an R file (e.g., cnn_fashion_mnist.R).
Open an R environment (e.g., RStudio) and set the working directory to where your script is located.
Run the script in the R environment.
The script performs similar tasks to the Python script:

Loads the Fashion MNIST dataset.
Builds a Convolutional Neural Network (CNN) model using Keras.
Compiles and trains the model using the training data.
Makes predictions for two images from the test set and displays the predictions along with the actual labels.
Additional Notes:
Ensure that you have a stable internet connection while running the scripts, as they download the Fashion MNIST dataset if it's not already available. (mine was downloaded twice because of network failure)
Make sure your system meets the hardware requirements for running deep learning models efficiently, especially during training.
Feel free to modify the scripts according to your requirements, such as adjusting model architecture, training parameters, or data preprocessing steps.
That's it! You should now be able to run the provided Python and R scripts to train CNN models for classifying Fashion MNIST dataset using Keras.
