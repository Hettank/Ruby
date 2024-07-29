scores = { alice: 50, bob: 75, charlie: 90, dave: 60 }

threshold = 70

filter = scores.select {
  |name, score|
  score > threshold
}

puts filter