## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

**Note**: The following image link needs to be updated. Replace `diagram_filename.png` with the name of your diagram image file.  

[Microsoft Azure Virtual Network](./Diagram/Azure_Virtual_Network_Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Azure_Virtual_Network_Diagram.png file may be used to install only certain pieces of it, such as Filebeat.

  - _./Ansible/Install-elk.yml_

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly redundant, in addition to restricting traffic to the network.
- _Load Balancers protect the Availability aspect of the CIA security triad. They do this by methodical and efficient distribution of network or application traffic across multiple servers in a network. Each load balancer sits between client devices and backend servers, receiving and then distributing incoming requests to any available server capable of fulfilling them._

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system applications.
- _Filebeat is a lightweight shipper for forwarding and centralizing log data. Installed as an agent on your servers, Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing._
- _Metricbeat is a lightweight shipper that you can install on your servers to periodically collect metrics from the operating system and from services running on the server. ... Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as: Apache. HAProxy._

The configuration details of each machine may be found below.

| Name         | Function    | IP Address    | Operating System |
|--------------|-------------|---------------|------------------|
| Jump Box     | Gateway     | 13.82.64.93   | Linux            |
| Elk Stack VM | Aggregate   | 20.96.1.130   | Linux            | is now 20.65.36.36
| WebVM-1      | Metric Beat | 13.90.96.140  | Linux            |
| WebVM-2      | Metric Beat | 13.90.96.140  | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Load Balancing machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _13.90.96.140_

Machines within the network can only be accessed by the jump box.
- _The Jump Box VM has access to the ELK-VM. The public IP of the Jump Box is 20.102.124.23_

A summary of the access policies in place can be found in the table below.

| Name         | Publicly Accessible | Allowed IP Address |
|--------------|---------------------|--------------------|
| Jump Box     | No                  | Home IP            |
| Elk Stack VM | No                  | 20.96.1.130        | is now 20.65.36.36
| WebVM-1      | Yes                 | 13.90.96.140       |
| WebVM-2      | Yes                 | 13.90.96.140       |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _The primary benefit of Ansible is it allows IT and Security Professionals to automate away the drudgery from their daily tasks. That frees them to focus on efforts that help deliver more value to the business by spending time on more important tasks._

The playbook implements the following tasks:
- Insall Docker
- Install Python3-pip module to 
- Install Docker python module using pip3
- Increase the system memory
- Download the docker image container containing elk

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

**Note**: The following image link needs to be updated. Replace `docker_ps_output.png` with the name of your screenshot image file.  


[Docker PS Output Screenshot showing successful configuration of ELK deployment on VM](Diagrams/seans_docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.7 and 10.0.0.1

We have installed the following Beats on these machines:
- MetricBeats on 10.0.0.7 and 10.0.0.1

These Beats allow us to collect the following information from each machine:
-  Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash.

Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as:

System logs.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the metricbeat config file to the ansible container.
- Update the config file to include the settings described in the installation instructions of the server...
- Run the playbook, and navigate to the the ELK server GUI to check that the installation worked as expected.


- Metricbeat-playbook.yml is the playbook 
- You have to update the hosts file to make ansible run the playbook on a specifc machine. 
- The installation yml file for install-elk.yml specifes the elk server for. The Metricbeat-playbook.yml file specifies the webservers as the VMs to install metricbeat on. 

- _Which URL do you navigate to in order to check that the ELK server is running? http://20.65.36.36:5601/app/kibana



_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

curl https://gist.githubusercontent.com/slape/5cc350109583af6cbe577bbcc0710c93/raw/eca603b72586fbe148c11f9c87bf96a63cb25760/Metricbeat >> /etc/ansible/metricbeat-config.yml


