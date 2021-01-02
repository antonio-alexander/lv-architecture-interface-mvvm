# lv-architecture-interface-mvvm

This is an attempt/proof of concept of how i'd implement the basic concept of mvvm in LabVIEW with an interface. It has the primary goal of abstracting an interface from the functional code in such a way to be able to change an interface without having to change the underlying functional code. At a high-level, the idea is to TOTALLY separate hmi/interface code/functionality from the backend-functionality (e.g. blinking a button versus performing the functionality when you press a button).

The need for this architecture was born out of the idea to theme with minimal code changes. I think this implementation can cover both simple cases where you just register to for events for a given number of controls and more complex cases where you just want to fire user events via command/variant in the event the front panel layout differs significantly (e.g. you use a numeric input that was once a boolean input for some reason).

I hate classes in LabVIEW, but felt that using them would be a better implementation than the alternative of using the VI Server to asynchronously launch them. I think it's good enough for 1:1 interface to functionality, but for 1:N I don't think it'd work.

## Issues/Problems

* The Functional package kind of acts as the brains/manager, it's mean to stay persistent in memory for the duration of the application while the instance of interface may be changed at will. There's a kind of chicken before the egg problem, but as coded you'll need to "initialize" the first interface on startup.
* Although as coded, there's an implied 1:1 between functional packages and interfaces, I don't think it's a necessary and very possible to have multiple interfaces with a single functional package, you'd just have to manage all the interfaces or do some internal magic inside the classes.
* The classes are singletons but are always by value, this could be problematic if you attempt to do more with the classes beyond passing it to the functional package and letting it manage it.
* Since the implementation uses user events heavily, there's an all-or-none kind of situation (i.e. everything is implemented using events and not queues) and issues with feedback, so be careful about traffic and to some degree synchronization. For some of the functional api I've embedded queues in the payload so the calling api will block until the event is complete, but I have a feeling there are some situations where the lack of synchronization could cause some janky functionality

## Adding functionality to functional main

In a perfect world, the functionality is implemented for the functional event and the registered events from the hmi references (if any) send user events to it. If at all possible, all HMI code should be pushed to the interface and NOT present within the functional main. In the event synchronization or feedback is needed, please modify the event such that you send it a queue reference where it can return the appropriate feedback (and block) to the calling VI.

## Integration/Implementation of interfaces

Copy+paste the functional package for every interface/functional set you want/need. Once done, you'll need to implement an interface that inherits from the interface class and at least implements the load method. You'll need to load the interface and then update the hmi references using the functional event. On load, you should start the interface (e.g. private/main.vi) and update the hmi references. If you have a super simple implementation, it should be enough to update the hmi references, otherwise you'll need to communicate using the functional event reference.
