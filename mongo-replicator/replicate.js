rs.initiate( {
  _id : "rs0",
  members: [
    { _id: 0, host: "mongo-primary:27017" },
    { _id: 1, host: "mongo-secondary:27017" },
  ]
});
