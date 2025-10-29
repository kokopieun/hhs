# About
This is a github action to run ubuntu vps through Tailscale SSH.

# Disclaimer
I am not responsible if you're account is banned. 
Don't use this vps for :
* Cryptomining
* Using our servers to disrupt, or to gain or to attempt to gain unauthorized access to, any service, device, data, account, or network (other than those authorized by the GitHub Bug Bounty program)
* The provision of a stand-alone or integrated application or service offering Actions or any elements of Actions for commercial purposes
* Any activity that places a burden on our servers, where that burden is disproportionate to the benefits provided to users (for example, don't use Actions as a content delivery network or as part of a serverless application, but a low benefit Action could be ok if it's also low burden)
* Any other activity unrelated to the production, testing, deployment, or publication of the software project associated with the repository where GitHub Actions are used.

## How To Run ?

# Setting up:

Variables Name | Uses | Notes
----- | ----- | -----
`TAILSCALE AUTH KEY` | For **Tailscale** network connection | Go to Tailscale admin console and create an auth key from https://login.tailscale.com/admin/settings/keys
`USERNAME` | For VPS username | Type any name you want
`USER PASSWORD` | For VPS user password | Type any password you want
`MACHINE NAME` | For VPS System `Machine` name | Type any name you want
***

* Fork this project.
* Fill the gaps.
* Go to `Actions` Tab and select one of system workflow.
* Click `Run Workflow` button on the left of `This workflow has a workflow_dispatch event trigger` line.
* Wait until a few minutes.
* Go to `https://login.tailscale.com/admin/machines` and check if there's a new machine connected.
* Copy the Tailscale IP and connect through SSH.
* Fill in those login info, within username from `USERNAME` and password from `USER PASSWORD` you typed.

# Requirements
- You need to have a Tailscale account
- Make sure your local machine has Tailscale installed and connected to the same network

# License

        Copyright (c) 2022 Diwas007

       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.
