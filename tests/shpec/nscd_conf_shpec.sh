describe "test nscd.conf file"
  LINE='threads 20'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end

  LINE='enable-cache passwd no'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='enable-cache group no'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='enable-cache hosts yes'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='enable-cache services yes'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='enable-cache protocols yes'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='enable-cache rpc yes'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='enable-cache networks yes'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='enable-cache groups no'
  it "does not have '$LINE' line"
    assert blank "$(grep "^$LINE$" /etc/nscd.conf)"
  end
    
  LINE='positive-time-to-live hosts 1'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='positive-time-to-live services 10'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end

  LINE='positive-policy hosts fifo'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='positive-policy services lru'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='positive-policy services filo'
  it "does not have '$LINE' line"
    assert blank "$(grep "^$LINE$" /etc/nscd.conf)"
  end

  LINE='negative-time-to-live protocols 1'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='negative-time-to-live rpc 10'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end

  LINE='negative-policy hosts fifo'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='negative-policy services lru'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end

  LINE='negative-confidence-threshold hosts 1'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='negative-confidence-threshold services 10'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end

  LINE='suggested-size networks 1024'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end

  LINE='keep-hot-count networks 1024'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='keep-hot-count services 2048'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end

  LINE='perform-actual-lookups passwd yes'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='perform-actual-lookups group yes'
  it "has '$LINE' line"
    assert equal "$(grep "^$LINE$" /etc/nscd.conf)" "$LINE"
  end
  LINE='perform-actual-lookups networks yes'
  it "does not have '$LINE' line"
    assert blank "$(grep "^$LINE$" /etc/nscd.conf)"
  end
end
