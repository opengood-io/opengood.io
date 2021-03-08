---
layout: post
title:  What is Cloud-Native?
date:   2019-12-03 16:05:55 -0500
image:  cloud-native.jpg
tags:   [patterns-practices]
---
> The latest buzz word in the application and data world is
cloud-native. It's a new approach that changes everything. What is it
and why is it so compelling?

# Traditional Enterprise

Historically, applications are built on where they are deployed:
on-premise, corporate data centers. They run on infrastructure designed
with static resource sizing, and typically cannot scale on-demand.
Deploying them to production can take anywhere from hours to days, often
performed via manual error-prone processes.

These applications are not designed to natively run in the cloud.
Typically, they are designed as **monoliths**, whereby all application
components are tightly coupled together in a single application. Thus,
they all must be developed, built, tested, and deployed together. This
increases the time and risk it takes to deliver new features to
production for businesses.

As a result, businesses often miss out on critical opportunities to
yield the benefits of new features.

# Cloud-Native

> Cloud-native is an approach to building/running applications that
take advantage of the cloud computing delivery model.

> Cloud-native is about how applications are created and deployed,
not where.

With cloud-native, **the ability to offer nearly limitless computing
resources, on-demand, and modern data and application services for
developers is critical**. As a result, when organizations build and
operate applications as cloud-native, *new features are brought to
market faster, allowing businesses to respond sooner to customer
demands*.

With cloud-native, applications are designed with **microservices**,
which are a collection of small services, each implementing business
capabilities, run in their own process and containers, are decoupled
from other services of the application, and can be deployed, upgraded,
or restarted independent of other services without adversely affecting
the application.

# Cloud-Native Platform

**Organizations require a platform for building/operating cloud-native
applications and services** that integrates and automates the concepts
of:

* DevOps
* Continuous Delivery
* Microservices
* Containers

Cloud-native platforms provide capabilities that implement all these
concepts allowing developers to focus on delivering high quality
software. Coupled with an Agile development methodology, such as
Lean Agile, and development practices, such as Extreme Programming (XP),
Test-Driven Development (TDD), and Continuous Integration and Delivery
(CI/CD), high quality software can be created and deployed rapidly, all
the way to production, in a matter of minutes. In addition, cloud-native
applications are designed to be highly resilient, and often leverage the
capabilities and services provided by a cloud-native platform to
implement resilience.

## Cloud-Native Framework

**Cloud-native applications conform to a framework or contract designed
to maximize resilience** through predictable behaviors.

### 12-Factor Apps

An example of a **contract** is illustrated in
[12-Factor Apps](https://12factor.net "12-Factor Apps").

# Resources

* VMWare's article on
[Cloud-Native](https://tanzu.vmware.com/cloud-native "Cloud-Native")
