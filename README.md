# Dockerized Chrome Headless for angular projects

The main purpose of this tool is to offer a decoupled environment for testing angular-cli applications using a Chrome Headless browser.

## Installing it into your project

You need to tweak your `src/karma.conf.js` file to append the configuration param inside the config.set dictionary as follows:

```
    browsers: ['ChromeHeadlessNoSandbox'],
    customLaunchers: {
      ChromeHeadlessNoSandbox: {
        base: 'ChromeHeadless',
        flags: [
          '--no-sandbox'
        ]
      }
```

## How to use it

Inside your angular-cli project, do the following:

    $ docker run --rm -v $(pwd):/app joepreludian/ng-chrome-headless

And that's it =)
