.. _analytics:

Analytics (reporting)
=====================

When you work in or manage a team, you sometimes have questions about the work in progress or completed work.
For example, management decisions about team resources might depend on what work the team completed last month and what work remains incomplete.
While day-to-day case work focuses on completing one task at a time, managing a team of case workers demands an aggregated overview of the team’s work.

The `Analytics` menu makes it possible to create and share reports that provide these overviews.
Each report runs on demand and aggregates a process’ cases in tabular and graphical form in the web user interface.


Creating a new report
---------------------

To create a new report, select `Analytics` in the menu, and then `Create new report`.
Enter a name for your report that decribes the data, such as *First quarter sales*.
The finish setting up a basic report, use the list labled `Select a process` to choose one of your organization’s published reports.

When you create a report and select a process, the report shows a table of all of the process’ cases.
This report now appears in the list of reports that you see when you select `Analytics`.
By default, only you can see the report in the list.


Viewing and exporting report results
------------------------------------

The report page’s table shows cases, with one case per row.
The table header indicates the number of cases included in the report.
Select `Configure columns` to choose which columns the table includes.

If you have special presentation requirements, you may want to use the same data to produce your own report using different software.
To do this, you can download the same data as a `CSV file <https://en.wikipedia.org/wiki/Comma-separated_values>`_ that you can open in spreadsheet software.


Selecting cases to include in a report
--------------------------------------

For most reports, you won’t want to include all of a process’ cases.
After all, that’s what the :ref:`Cases view <cases-overview>` already shows.
Instead, you can restrict which cases the report includes, by status or by the values of the process’ :ref:`variables`.

Filtering by status lets you create separate reports for completed work, such as a monthly productivity report, and outstanding work.
To filter cases by status, use the first pick-list to select between `all cases`, `open cases` and `closed cases`.

To filter cases by variables’ values, first select `Add a filter condition`.
This adds a field condition, which works the same way as an :ref:`exclusive-gateway-automatic` condition.
Select a field, such as `Case / End date`, a condition, such as `is after`, and a value, such as the last day of the previous month.

You can add multiple conditions to further restrict which cases the report includes.
A monthly case report would have two conditions for the `Case / End date` field, using the `is after` and `is before` conditions to define a date range.


Grouping cases to display a pie chart
-------------------------------------
