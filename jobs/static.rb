LOREM = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
SHOPPING = [ {label: 'cheese', value: 'cheddar'}, {label: 'chilli', value: 'habanero'}, {label: 'chutney', value:'hari' } ]
AVATAR = 'https://pbs.twimg.com/profile_images/1392851700/JS0029-1-small_normal.jpg'
TWEETS = [{name: 'builddoctor', body: 'Such Dashboard', avatar: AVATAR}, {name: 'builddoctor', body: 'Many Widgets', avatar: AVATAR}]
SCHEDULER.every '1m', {:first_in => 0 } do
  send_event 'number_event', {current: 5, last: 4}
  send_event 'test_event', { text: LOREM}
  send_event 'meter_event', {value: rand(100) }
  send_event 'list_event', {items: SHOPPING}
  send_event 'graph_event', {points: [{x:1, y: 4}, {x:2, y:10}, {x:3, y:6}, {x:4, y:8}]}
  send_event 'comments_event', {comments: TWEETS}
  send_event 'image_event', {image: '/EoxSFpq.jpg'}
  send_event 'iframe_event', {url: 'http://en.wikipedia.org/wiki/Rickrolling'}
end
