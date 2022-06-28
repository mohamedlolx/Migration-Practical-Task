import express, { Request, Response } from 'express'
import { Pool } from 'pg'
import dotenv from 'dotenv'
dotenv.config()

const { port, pgHost, pgPort, pgDb, pgUser, pgPassword } = process.env

const app = express()

app.use(express())

app.get('/', (req: Request, res: Response): void => {
  res.json({
    message: "'Hello from Server Side Get Request'"
  })
})

app.listen(port, () => {
  console.log(`Server is working on port ${port}`)
})

const pool = new Pool({
  user: pgUser,
  host: pgHost,
  password: pgPassword,
  database: pgDb,
  port: parseInt(pgPort as string, 10)
})

pool.connect().then((client) => {
  return client.query('SELECT NOW()').then((res) => {
    console.log(res.rows)
    client.release()
  })
})
