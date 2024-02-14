package models

import (
	"database/sql"
	"errors"
	"time"
)

type Calendar struct {
	ID          int
	Calendar    int
	Title       string
	Snippets_id int
	Owner       int
	Created     time.Time
	Event_time  time.Time
}

type CalendarModel struct {
	DB *sql.DB
}

type CalendarEntriesModelInterface interface {
	CreateEntrie(calendar int, title string, snippets_id int, owner int) (int, error)
	GetEntrie(id int) (Calendar, error)
	GetAllEntrie() ([]Calendar, error)
}

func (m *CalendarModel) CreateEntrie(calendar int, title string, snippets_id int, owner int, event_time time.Time) (int, error) {
	stmt := `INSERT INTO calendar_entries (calendar, title, snippets_id, owner, event_time) 
			VALUES(?, ?, ?, ?, ?)`
	result, err := m.DB.Exec(stmt, calendar, title, snippets_id, owner, event_time)
	if err != nil {
		return 0, err
	}
	id, err := result.LastInsertId()
	if err != nil {
		return 0, err
	}
	return int(id), nil
}
func (m *CalendarModel) GetEntrie(snippets_id int, calendarid int) (Calendar, error) {
	stmt := `SELECT id, calendar, title, snippets_id, owner, event_time, created  FROM calendar_entries
			WHERE calendar = ?  AND id = ?`

	row := m.DB.QueryRow(stmt, calendarid, snippets_id)
	var s Calendar

	err := row.Scan(&s.ID, &s.Calendar, &s.Snippets_id, &s.Owner, &s.Event_time, &s.Created)
	if err != nil {
		if errors.Is(err, sql.ErrNoRows) {
			return Calendar{}, ErrNoRecord
		} else {
			return Calendar{}, err
		}
	}
	return s, nil
}

func (m *CalendarModel) Latest(calendarid int) ([]Calendar, error) {
	stmt := `SELECT id, Calendar, title, snippets_id, owner, event_time, created FROM calendar_entries
			WHERE Calendar = ?  ORDER BY event_time DESC LIMIT 200`

	rows, err := m.DB.Query(stmt, calendarid)
	if err != nil {
		return nil, err
	}

	defer rows.Close()

	var calendars []Calendar

	for rows.Next() {
		var s Calendar

		err = rows.Scan(&s.ID, &s.Calendar, &s.Title, &s.Snippets_id, &s.Owner, &s.Event_time, &s.Created)
		if err != nil {
			return nil, err
		}
		calendars = append(calendars, s)
	}

	if err = rows.Err(); err != nil {
		return nil, err
	}

	return calendars, nil
}
