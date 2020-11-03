AWS Global Infrastructure
#########################

AWS Regions
***********

The global infrastructure that supports AWS cloud platform is distributed in several separate geographic areas around the world. These areas are called **regions** which consist of two or more **Availability Zones** (AZ) - most of the regions have 3 AZs. Currently, these are the following regions represented by a region code:

.. csv-table:: AWS Region List
   :file: intro_d/regions.csv
   :widths: 20, 40, 40
   :header-rows: 1

.. Note:: Available Regions.

   AWS GovCloud (US-West) account provides access to the AWS GovCloud (US-West) Region only. An Amazon AWS (China) account provides access to the Beijing and Ningxia Regions only. 

   You can't describe or access additional Regions from an AWS account, such as AWS GovCloud (US-West) or the China Regions.

   To use a Region introduced after March 20, 2019, you must enable the Region. For more information, see `Managing AWS Regions <https://docs.aws.amazon.com/general/latest/gr/rande-manage.html>`_ in the AWS General Reference.

.. Note:: Enabled Regions.

   If the Region is enabled by default, the output includes the following:

   *"OptInStatus": "opt-in-not-required"*

   If the Region is not enabled, the output includes the following:

   *"OptInStatus": "not-opted-in"*

   After an opt-in Region is enabled, the output includes the following:

   *"OptInStatus": "opted-in"*

This is the script used to obtain this AWS Region List:

.. literalinclude:: intro_d/describe_regions.py
  :language: python


`Describing your Regions <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#using-regions-availability-zones-describe>`_

`Describe Amazon EC2 Regions and Availability Zones <https://boto3.amazonaws.com/v1/documentation/api/latest/guide/ec2-example-regions-avail-zones.html>`_

AWS Availability Zones
**********************

An Availability Zone (AZ) consists of several datacenters, all of them linked via intra-AZ connections and each with with redundant power supplies, networking and connectivity, housed in separated facilitiess. All AZ are connected among them through inter-AZ connections and to the exterior via Transit Center connections. AZs are represented by a region code followed by a letter identifier.

.. csv-table:: AWS Availability Zones List
   :file: intro_d/azs.csv
   :widths: 20, 40, 40
   :header-rows: 1

.. literalinclude:: intro_d/describe_azs.sh
  :language: bash

AWS Edge Locations
******************

Amazon Web Services (AWS) publishes its current IP address ranges in JSON format. To view the current ranges, download ip-ranges.json. For more information, see AWS IP Address Ranges in the Amazon Web Services General Reference.

`Locations and IP Address Ranges of CloudFront Edge Servers <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/LocationsOfEdgeServers.html>`_.

.. literalinclude:: intro_d/get_ip_ranges.py
  :language: python
