# Strange python script that treat src as a package
#  so that we can have folders in src


from setuptools import setup


if __name__ == '__main__':
    setup(
        name='ssrc',
        packages=['src']
    )
