## Resources
Qchan API manages the 3 types of resources: Job & Build & Subscription.

### Job
Job is minimal managable unit for tasks in Qchan system.
A Job has the following properties:

| name           | type     | description                                                     |
| ----           | ----     | ----                                                            |
| id             | integer  | the Job ID, unique in the all Jobs in the Qchan system          |
| children_ids   | integers | an array of the following Job IDs                               |
| command        | string   | the actual shell-script that will be executed by Qchan's worker |
| succeess_count | integer  | count of successes                                              |
| failure_count  | integer  | count of failures                                               |
| name           | string   | human-readable name                                             |
| schedule       | string   | in ISO8601 format like `R10/2012-10-01T05:52:00Z/PT2S`          |

### Build
Build is created for each execution of the Job,
so we might say that there exists a relationship of "A Job has many Builds and a Build belongs to a Job".
A Build has the following properties:

| name        | type    | description                                                        |
| ----        | ----    | ----                                                               |
| id          | integer | the Build ID, unique in the all Builds in the Qchan system         |
| job_id      | integer | related Job's ID                                                   |
| exit_status | integer | the exit status of the build                                       |
| number      | integer | counting number, auto-incremented from 1 for each build of its job |
| output      | string  | stdout + stderr of the build                                       |
| started_at  | string  | build started time in ISO8601 format                               |
| finished_at | string  | build finished time in ISO8601 format                              |

### Subscription
Subscription is a unit of registration to the Qchan system's pub-sub workers.
A Subscription has the following properties:

| name    | type    | description                                                              |
| ----    | ----    | ----                                                                     |
| id      | integer | the Subscription ID, unique in the all Subscriptions in the Qchan system |
| job_id  | integer | related Job's ID                                                         |
| service | string  | a string property to identify its service type                           |
| payload | string  | free JSON text to store information used by individual event worker      |
