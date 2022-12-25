# Funk bass

# Coded by Mark Jones

use_debug false
use_synth_defaults release: 0.5, amp: 0.7, cutoff: 85
use_synth :bass_foundation

define :parta do
  play_pattern_timed [42,40,42],[0.5]
  play_pattern_timed [45],[0.25]
  play_pattern_timed [47],[0.75]
  play_pattern_timed [45,42,40],[0.5]
  play_pattern_timed [42],[1.0]
end

define :part1 do
  parta
  play_pattern_timed [40],[0.5]
  play_pattern_timed [37],[2]
end

define :part2 do
  parta
  play_pattern_timed [45],[0.5]
  play_pattern_timed [47],[2.0]
end

define :part3 do
  play_pattern_timed [35],[0.25]
  play_pattern_timed [35],[0.75]
  play_pattern_timed [37],[0.25]
  play_pattern_timed [37],[0.75]
  play_pattern_timed [40],[0.25]
  play_pattern_timed [40],[1.5]
  play_pattern_timed [42],[0.25]
  play_pattern_timed [42],[1.5]
  play_pattern_timed [40],[0.25]
  play_pattern_timed [37],[1.5]
end


in_thread do
  4.times do
    part1
    part2
    part1
    part3
  end
end


