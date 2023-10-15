package main

import (
	"strconv"
	"strings"
)

type Matrix struct {
	rows [][]int
}

func ParseMatrix(s string) Matrix {
	rows := make([][]int, 0)
	lines := strings.Split(s, "\n")
	for _, line := range lines {
		values := strings.Fields(line)
		row := make([]int, 0)
		for _, value := range values {
			n, _ := strconv.Atoi(value)
			row = append(row, n)
		}
		rows = append(rows, row)
	}
	return Matrix{rows}
}

func (m Matrix) Row(index int) []int {
	return m.rows[index-1]
}

func (m Matrix) Column(index int) []int {
	column := make([]int, 0)
	for _, row := range m.rows {
		column = append(column, row[index-1])
	}
	return column
}
