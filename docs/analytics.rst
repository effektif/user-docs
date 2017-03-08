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
Enter a name for your report that describes the data, such as *First quarter sales*.
The finish setting up a basic report, use the list labelled `Select a process` to choose one of your organization’s published reports.

When you create a report and select a process, the report shows a table of all of the process’ cases.
This report now appears in the list of reports that you see when you select `Analytics`.
By default, only you can see the report in the list.


Viewing and exporting results
-----------------------------

The report page’s table shows cases, with one case per row.
The table header indicates the number of cases included in the report.
Select `Configure columns` to choose which columns the table includes.
This works the same way as :ref:`configure-columns`.

If you have special presentation requirements, you may want to use the same data to produce your own report using different software.
To do this, you can download the same data as a `CSV file <https://en.wikipedia.org/wiki/Comma-separated_values>`_ that you can open in spreadsheet software.


Selecting cases to include
--------------------------

For most reports, you won’t want to include all of a process’ cases.
After all, the :ref:`Cases view <cases-overview>` already shows an overview of all cases.
Instead, you can restrict which cases the report includes, by status or by the values of the process’ :ref:`variables`.

.. figure:: /_static/images/analytics/process.png

   Selecting a process and whether to include open or closed cases

In this example, the *Evaluate training course* process collects ratings for training courses.
To create a report that uses these evaluations, select closed cases, which correspond to completed evaluations.


Excluding cases with filters
----------------------------

Filtering by status lets you create separate reports for completed work, such as a monthly productivity report, and outstanding work.
To filter cases by status, use the first pick-list to select between `all cases`, `open cases` and `closed cases`.

To filter cases by variables’ values, first select `Add a filter condition`.
This adds a field condition, which works the same way as an :ref:`exclusive-gateway-automatic` condition.
Select a field, such as `Case / End date`, a condition, such as `is after`, and a value, such as the last day of the previous month.

.. figure:: /_static/images/analytics/filters.png

  Using a filter to exclude evaluations for courses other than *Time management*

You can add multiple conditions to further restrict which cases the report includes.
A monthly case report would have two conditions for the `Case / End date` field, using the `is after` and `is before` conditions to define a date range.


Grouping and charts
-------------------

As well as listing cases in a table, you can also group cases by one of the process variables, so that cases with the same value appear together in the table.
Grouping cases can also add a visualisation to the report.

To show a pie chart of the different values for a variable, such as the course evaluation ratings, select the *Rating* variable from the *Group by* list.
Then select the *Count* of *Case* values to count the evaluations with each distinct rating value.

.. figure:: /_static/images/analytics/group-count.png

  Grouping evaluations by rating, and counting the number of evaluations with rating 3, 4 or 5

Reports can also calculate *average* values for a numeric field, as well as counting cases.
To show a bar chart of the average rating for each course, group by the *Course* (title) and show the *Average* of *Rating* values.

.. figure:: /_static/images/analytics/group-average.png

  Grouping evaluations by course title, and calculating each course’s averge rating

As well as *Average*, you can also show the *Minimum* or *Maximum* for each rating.


Sharing a report
----------------

You can share a report so that other people in your organisation can run the report, without the ability to edit the report’s configuration.

.. figure:: /_static/images/analytics/menu.png

To share a report, select the *Share with others* option in the menu, under the report title.
On the dialogue box that opens, select people from the list.


Deleting a report
-----------------

To delete a report, select the *Delete report* option from the top-right menu, under the report title.

.. figure:: /_static/images/analytics/menu.png
