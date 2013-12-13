# Queuechan API
Provides Public API of Queuechan.

Queuechan is a project of a Job-Queue Worker System.
It consists of a cluster of many processes and Queuechan API is a member of them.
Queuechan API has a responsibility to provide Public REST API
to the Queuechan's internal processes and the other external clients via HTTP.

![](https://a248.e.akamai.net/camo.github.com/607c2ec126e02bdf43dc55436e1e14e780869e69/687474703a2f2f646c2e64726f70626f7875736572636f6e74656e742e636f6d2f2f752f353937383836392f696d6167652f32303133313231315f3034333135372e706e67)

## Resources
Queuechan API manages the 3 types of resources: Job & Build & Subscription.

### Job
Job is minimal managable unit for tasks in Queuechan system.
A Job has the following properties:

* id: the Job ID, unique in the all Jobs in the Queuechan system
* children_ids: an array of the following Job IDs
* command: the actual shell-script that will be executed by Queuechan's worker
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

* id: the Build ID, unique in the all Builds in the Queuechan system
* exit_status: the exit status of the build
* job_id: related Job's ID
* number: counting number, auto-incremented from 1 for each build of its job
* output: stdout + stdout of the build

### Subscription
Subscription is a unit of registrations to the Queuechan system's pub-sub workers.
A Subscription has the following properties:

* id: the Subscription ID, unique in the all Subscriptions in the Queuechan system
* type: a string property to identifier its event type
