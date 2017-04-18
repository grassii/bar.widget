command: "python bar.widget/scripts/windowname.py"

refreshFrequency: 500 

render: (output) ->
  "#{output}"

style: """
    
  color: #af9f9f
  opacity:1
  font: 11px ProggyOptiS
  text-transform lowercase
  height: 12px
  left: 125px
  overflow: hidden
  text-overflow: ellipsis
  top: 5px
  width: 320px
  z-index: 20
"""
