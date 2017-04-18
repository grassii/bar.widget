command: "sh bar.widget/scripts/mode.sh"

refreshFrequency: 500 # ms

render: (output) ->
  """
    <style>
    .active{
    color:#af9f9f
   
}

.tilingMode{
color: #7a6373
}

.active:after{
content:"";
width:20px;
height:15px;
background-color:rgba(41,40,42,1);

position:absolute;
left:75px
}

    .test:after{
    content:"II";
    color:#af9f9f;
    position:static;
    
}

</style>
    <div class='mode'></div>
  """

style: """
 
  color #865e70
  opacity 1
  text-align left
  font-family ProggyOptiS
  font-size 11px
  left: 45px
  top: 5px
  width:850px
z-index: 1
"""

update: (output, domEl) ->

  values = output.split('@')

  file = ""
  screenhtml = ""
  mode = values[0]
  screens = values[1]
  wins = values[2]
  win = ""
  i = 0

  screensegs = screens.split('(')

  for sseg in screensegs
    screensegs[i] = sseg.replace /^\s+|\s+$/g, ""
    i+=1

  screensegs = (x for x in screensegs when x != '')

  i = ""

  for sseg in screensegs
    i += "I"

    if sseg.slice(-1) == ")"
      screenhtml += "<span class='test screen#{i}'>#{i} </span>"
    else
      screenhtml += "<span class='active screen#{i}'>#{i} </span>"

  $(domEl).find('.mode').html("<span class='tilingMode white'>#{mode} </span>" + screenhtml )

