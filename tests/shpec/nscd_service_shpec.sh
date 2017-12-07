describe "test nscd service"
  service=/usr/sbin/service
  it "is enabled"
    $service nscd enabled
    assert equal $? 0
  end
  it "is running"
    output=$($service nscd status)
    assert grep "$output" '^nscd is running as pid [0-9]*.$'
  end
end
