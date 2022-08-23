from datetime import datetime
from nbconvert.preprocessors import Preprocessor

class CustomPreprocessor(Preprocessor):
    def preprocess(self, nb, resources):
        return super().preprocess(nb, resources)

    def preprocess_cell(self, cell, resources, index):
        return cell, resources