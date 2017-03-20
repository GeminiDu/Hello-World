function y = kNN(x_test, x_train, y_train, k)

 % x_test is a test datasets matrix of m-by-p
 % x_train is a train datasets matrix of n-by-p
 % y_train is a labels vector of n-by-1
 % k is number of neigbour
 % y is predict labels vector of m-by-1 for x_test

 % choice top_k_neighbor_labels
 m = size(x_test,1);
 for i = 1:m
      k_labels = top_k_neighbors(x_test(i,:),x_train, y_train, k);
      predict_labels(i) =  recog(k_labels, max(y_train));
 end
 
 y = predict_labels';
      