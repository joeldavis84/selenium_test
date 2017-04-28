# Joel's Magnificent Wonderously Astounding Selenium Testing Image

This is just the bare bones infrastructure for running python-driven Selenium testing using Firefox and Xvfb. The intended use is for Jenkins projects where pushing to "preview" or "test" triggers selenium testing without blocking pipeline progression. Selenium tests will likely need to be written by the developers themselves with the entry point cloning down a particular website's selenium tests and then doing something like `find /opt/selenium_tests -type f -exec python` after the clone is completed to actually run the tests.

This image is by no means functionally complete but at least gets me (and presumably others) to the state where there's at least the platform/applications installed. Only updates I plan on doing to this repo are geckodriver updates and possibly installing python module I find useful. Real world usage will require alterations to do anything useful
