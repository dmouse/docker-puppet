##########################################
#                                        #
##########################################

FROM centos

MAINTAINER David Flores "dmousex@gmail.com"

RUN yum -y --nogpgcheck install "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm" >/dev/null         
RUN yum install libyaml-devel rubygems ruby-devel which tar -y >/dev/null
RUN curl -L get.rvm.io | bash -s stable >/dev/null
RUN /usr/local/rvm/bin/rvm install 2.1.0 >/dev/null
RUN source /etc/profile.d/rvm.sh >/dev/null
RUN rvm use 2.1.0 --default >/dev/null
RUN yum -y --nogpgcheck install "http://yum.puppetlabs.com/el/6/dependencies/x86_64/ruby-rgen-0.6.5-2.el6.noarch.rpm" >/dev/null
RUN yum -y --nogpgcheck install "http://yum.puppetlabs.com/el/${RELEASE}/products/x86_64/puppet-3.4.3-1.el6.noarch.rpm" >/dev/null
RUN yum -y install puppet >/dev/null
