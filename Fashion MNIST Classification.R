library(keras)

# Load and preprocess the Fashion MNIST dataset
fashion_mnist <- dataset_fashion_mnist()
train_images <- array_reshape(fashion_mnist$train$x, c(60000, 28, 28, 1)) / 255
test_images <- array_reshape(fashion_mnist$test$x, c(10000, 28, 28, 1)) / 255

# Build the CNN model
model <- keras_model_sequential() %>%
  layer_conv_2d(filters = 32, kernel_size = c(3, 3), activation = 'relu', input_shape = c(28, 28, 1)) %>%
  layer_max_pooling_2d(pool_size = c(2, 2)) %>%
  layer_conv_2d(filters = 64, kernel_size = c(3, 3), activation = 'relu') %>%
  layer_max_pooling_2d(pool_size = c(2, 2)) %>%
  layer_conv_2d(filters = 64, kernel_size = c(3, 3), activation = 'relu') %>%
  layer_flatten() %>%
  layer_dense(units = 64, activation = 'relu') %>%
  layer_dense(units = 10, activation = 'softmax')

# Compile the model
model %>% compile(
  optimizer = 'adam',
  loss = 'sparse_categorical_crossentropy',
  metrics = c('accuracy')
)

# Train the model
history <- model %>% fit(train_images, fashion_mnist$train$y, epochs = 5, batch_size = 64, validation_split = 0.2)

# Make predictions for two images from the test set
predictions <- model %>% predict(test_images[1:2,, ,])

# Display the predictions and actual labels
for (i in 1:2) {
  cat(sprintf("Prediction for image %d: %d\n", i, which.max(predictions[i,])))
  cat(sprintf("Actual label for image %d: %d\n", i, fashion_mnist$test$y[i]))
}

