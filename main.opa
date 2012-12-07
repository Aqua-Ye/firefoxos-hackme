client function installMe(_) {
  %% hackme.installMe %%()
}

function page() {
  <>
    Hack me!
    <button id="installApp"
            onclick={installMe}>Install me!</button>
  </>
}

Server.start(
  Server.http,
  [ {resources:@static_resource_directory("resources")}
  , {register:{doctype:{html5}}}
  , {title:"Hackme", ~page}
  ]
)
