#!/usr/bin/python3
"""
Contains a certain inherits_from function
"""
def inherits_from(obj, a_class):
    """A functtion that returns True only if object(obj) is a sub-class or instance of a sub-class of a class(a_class), otherwise False"""
    return (issubclass(obj, a_class) and type(obj)!=a_class)
