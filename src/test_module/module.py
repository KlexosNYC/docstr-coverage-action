'''This is a file/module docstring'''

class TestClassWithDocstr:
    '''This is a test class definition docstring'''
    def __init__(self):
        '''This is a test __init__ method docstring'''
        pass

    def __enter__(self):
        '''This is a test magic method docstring'''
        pass

    def _test_private(self):
        '''This is a private method docstring'''
        pass

    def test_public(self):
        '''This is a method docstring'''
        pass

class IgnoreClass:
    def test(self):
        pass