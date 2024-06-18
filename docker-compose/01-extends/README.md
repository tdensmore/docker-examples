EXTENDS is a good solution as long as you only need a single service to be shared, and you know about its internal details so you know how to tweak configuration. 

But, it is not an acceptable solution when you want to reuse someone else’s configuration as a “black box” and don’t know about its own dependencies.