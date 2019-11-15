import TensorFlow

import Python
%include "EnableIPythonDisplay.swift"
IPythonDisplay.shell.enable_matplotlib("inline")
let plt = Python.import("matplotlib.pyplot")

// Download a helper file that helps us work around some temporary limitations
// in the dataset API.
let path = Python.import("os.path")
let urllib = Python.import("urllib.request")
let helperFiles = ["TutorialDatasetCSVAPI.swift"]
let helperFileBaseURL = "https://raw.githubusercontent.com/tensorflow/swift/master/docs/site/tutorials/"
for helperFile in helperFiles {
    if !Bool(path.isfile(helperFile))! {
        print("Downloading \(helperFile)")
        urllib.urlretrieve(helperFileBaseURL + helperFile, filename: helperFile)
    } else {
        print("Not downloading \(helperFile): already exists")
    }
}
