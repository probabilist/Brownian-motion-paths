# Brownian motion paths

## `BMpaths.R`

This R script will produce a plot of the path of an *n*-dimensional Brownian motion on the time interval [0, *T*]. The path is approximated as a polygonal path composed of straight line segments over time intervals of length *h*. The script will also produce an animation of the evolution of the path in the form of an HTML file.

The script currently has *n* = 3, *T* = 10, and *h* = 0.001. These can be modified, but we must have *n* = 2 or *n* = 3, and *T*/*h* must be a positive integer multiple of 100.

## `index.html`

This file and its supporting subfolders were created by `BMpaths.R`. Viewing this file on GitHub will only show you the source code. You can see the animation [here][1].

[1]: https://rawgit.com/probabilist/Brownian-motion-paths/master/index.html "BMpaths animation"