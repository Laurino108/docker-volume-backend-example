const express = require('express');
const fs = require('fs');
const app = express();

var cors = require('cors');
app.use(express.json(), cors());

app.post('/api/save-name', (req, res) => {
  const { name } = req.body;
  fs.writeFileSync(`./savedNames/${name}.txt`, name);
  res.send({ message: 'Name saved successfully' });
});

const PORT = 3001;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
