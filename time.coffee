command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  "#{output}"

style: """
  
  color: #af9f9f
  opacity:1
  font: 11px ProggyOptiS
  left: 50%
  transform translateX(-50%)
  top: 5px
    

"""
