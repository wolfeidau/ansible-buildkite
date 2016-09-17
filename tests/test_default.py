import pytest
from testinfra.utils.ansible_runner import AnsibleRunner

testinfra_hosts = AnsibleRunner('.molecule/ansible_inventory').get_hosts('all')


@pytest.mark.parametrize('f', ['/usr/bin/buildkite-agent',
                               '/etc/buildkite-agent/buildkite-agent.cfg'])
def test_etcd_installed(File, f):
    file = File(f)

    assert file.exists
