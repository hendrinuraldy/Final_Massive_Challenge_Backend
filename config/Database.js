import { Sequelize } from "sequelize";

const db = new Sequelize("rujak_database", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
