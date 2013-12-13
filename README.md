# Qchan API
Provides Public API of Qchan.

Qchan is a project of a Job-Queue Worker System.
It consists of a cluster of many processes and Qchan API is a member of them.
Qchan API has a responsibility to provide Public REST API
to the Qchan's internal processes and the other external clients via HTTP.

![](https://a248.e.akamai.net/camo.github.com/607c2ec126e02bdf43dc55436e1e14e780869e69/687474703a2f2f646c2e64726f70626f7875736572636f6e74656e742e636f6d2f2f752f353937383836392f696d6167652f32303133313231315f3034333135372e706e67)

## Resources
Qchan API manages the 3 types of resources: Job & Build & Subscription.

### Job
Job is minimal managable unit for tasks in Qchan system.
A Job has the following properties:

* id: the Job ID, unique in the all Jobs in the Qchan system
* children_ids: an array of the following Job IDs
* command: the actual shell-script that will be executed by Qchan's worker
* succeess_count: count of successes
* failure_count: count of failures
* name: human-readable name
* schedule: the scheduling for the job, in ISO8601 format like `R10/2012-10-01T05:52:00Z/PT2S`
 * 1st segment: number of times to repeat the job; put just 'R' to repeat forever
 * 2nd segment: the start time of the job
 * 3rd segment: the run interval

### Build
Build is created for each execution of the Job,
so we might say that there exists a relationship of "A Job has many Builds and a Build belongs to a Job".
A Build has the following properties:

* id: the Build ID, unique in the all Builds in the Qchan system
* exit_status: the exit status of the build
* job_id: related Job's ID
* number: counting number, auto-incremented from 1 for each build of its job
* output: stdout + stdout of the build

### Subscription
Subscription is a unit of registrations to the Qchan system's pub-sub workers.
A Subscription has the following properties:

* id: the Subscription ID, unique in the all Subscriptions in the Qchan system
* type: a string property to identifier its event type
