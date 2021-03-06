resource "aws_elastic_beanstalk_environment" "welxome-6-env" {

  name = "welxome-6-tf-env"
  application = aws_elastic_beanstalk_application.welxome-6_app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.9 running PHP 8.0" # The name of the Aazon PHP Solution
  description = "environment for flask app"
  version_label = aws_elastic_beanstalk_application_version.welxome-6_app_ver.name

  setting {
      namespace = "aws:autoscaling:launchconfiguration"
      name = "IamInstanceProfile"
      value = "aws-elasticbeanstalk-ec2-role"
  }

}