#!/usr/bin/env python
from distutils.core import setup


install_requires = (
    'abjad',
    )

def main():
    setup(
        author='Josiah Wolf Oberholtzer',
        author_email='josiah.oberholtzer@gmail.com',
        install_requires=install_requires,
        name='demarest',
        packages=('demarest',),
        url='https://github.com/josiah-wolf-oberholtzer/demarest',
        version='0.1',
        zip_safe=False,
        )

if __name__ == '__main__':
    main()