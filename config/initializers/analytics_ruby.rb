Analytics = Segment::Analytics.new({
    write_key: '4yYcBBHkRQqBZ0xhL4H6ZQsJSUQcO9b3',
    on_error: Proc.new { |status, msg| print msg }
})
