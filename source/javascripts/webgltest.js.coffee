# Leo's WebGL Test
console.log "We're on!"

# Sets up the scene graph
scene = new THREE.Scene()

# Adds a camera object
camera = new THREE.PerspectiveCamera(75, window.innerWidth/window.innerHeight, 0.1, 1000)

# Instantiate the renderer
renderer = new THREE.WebGLRenderer()
renderer.setSize(window.innerWidth, window.innerHeight)

# Create the Canvas
document.body.appendChild(renderer.domElement)

# Add geometry
geometry = new THREE.CubeGeometry(1,1,1)
material = new THREE.MeshBasicMaterial({color: 0x00ff00})
cube = new THREE.Mesh(geometry, material)
scene.add(cube)

# Position the camera backwards
camera.position.z = 5

# Render loop
render = () ->
  requestAnimationFrame(render)

  cube.rotation.x += 0.01
  cube.rotation.y += 0.01

  renderer.render(scene, camera)


# Start rendering
render()
