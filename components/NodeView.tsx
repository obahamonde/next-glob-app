import { useState, useEffect } from "react";
import { AgGridReact } from "ag-grid-react"; // AG Grid Component
import "ag-grid-community/styles/ag-grid.css"; // Mandatory CSS required by the grid
import "ag-grid-community/styles/ag-theme-quartz.css"; // Optional Theme applied to the grid

export default function NodeView() {
  const [data, setData] = useState();

  useEffect(() => {
	const responsse = await fetch("/api/)



}, []);
}
