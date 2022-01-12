fetch('https://zwbp1u381e.execute-api.eu-central-1.amazonaws.com/Prod/hello')
  .then(response => response.json())
  .then((data) =>{
    document.getElementById('replaceme').innerText = data.count
  })