numSamples = 351; 
numFeatures = 34; 
features = rand(numSamples, numFeatures);
classes = randi([0, 1], numSamples, 1); 

ionosphere_data = array2table(features);
ionosphere_data.Class = categorical(classes);