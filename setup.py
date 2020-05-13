from setuptools import setup

setup(
    # Application name:
    name="Json2Yaml",

    # Version number (initial):
    version="0.1.0",

    # Application author details:
    author="redsymbol",

    # Packages
    packages=["app"],

    # Include additional files into the package
    # include_package_data=True,
    entry_points={
        'console_scripts': ['json2yaml=app.json2yaml:main'],
    },

    # Details
    url="https://github.com/redsymbol/json2yaml",

    #
    # license="LICENSE.txt",

    # long_description=open("README.txt").read(),

    # Dependent packages (distributions)
    install_requires=[
        "PyYAML",
    ]
)
