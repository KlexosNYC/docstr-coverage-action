from test_module import TestClassWithDocstr


def main(param:str = 'Test') -> bool:
    '''This is a docstring test for param, type, and return doc

    :param param: Test parameter, defaults to 'Test'
    :type param: str, optional
    :return: Returns true always
    :rtype: bool
    '''
    print(param)

    test = TestClassWithDocstr()
    test.test_public()
    
    return True

def should_fail(param1, param2: str = 'Test') -> bool:
    pass

if __name__ == '__main__':
    main('test param')