# Joel's Magnificent Wonderously Astounding Selenium Testing Image

Real world usage will require alterations to do anything useful
 
This is just the bare bones infrastructure for running python-driven Selenium testing using Firefox and Xvfb. The intended use is for Jenkins projects where pushing to "preview" or "test" triggers selenium testing without blocking pipeline progression. Selenium tests will likely need to be written by the developers themselves with the entry point cloning down a particular website's selenium tests and then doing something like `find /opt/selenium_tests -type f -exec python` after the clone is completed to actually run the tests.

This image is by no means functionally complete but at least gets me (and presumably others) to the state where there's at least the platform/applications installed. 

Only real updates I plan on doing to this repo would be:

- geckodriver updates 
- Python modules I find generally useful in Selenium testing
- Possibly changing the base image to alpine although anecdotal testing seems to indicate that the Alpine images I was creating weren't much smaller than `centos:7`
- Possibly several sample tests to give others ideas on how to best leverage a Selenium+Jenkins+Docker test framework
