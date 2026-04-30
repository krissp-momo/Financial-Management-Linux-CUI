# Financial Management Calculator (Linux CUI)

A professional, menu-driven Financial Management CUI project built using Linux shell scripting. This tool provides categorization of ratio analysis and Time Value of Money (TVM) formulas with robust error handling and decimal precision.

## The Story Behind the Project 

What inspired me to make this project? During my lab practical examination, we were supposed to take 1 command line arg and condition the flow of the program accordingly. I put up a condition to catch the error for zero arguments passed. I honestly thought I was making a better program because others might have not thought of catching the zero arg error.

**During evaluation, I was feeling satisfied with my program, but then Kaushal sir asked me: "What about when you pass 2 arguments in the command line?"**

I never thought of it. It was very simple—the same logic to check the number of arguments (`$# > 1` = error). It was very simple logic, yet I didn't think of the "error," even though I knew the solution. This made me realize the clear difference between an engineer's and a student's thinking process. This project is a final closure to this course and my inspiration to explore advanced Operating Systems.

## Technical Details 

*   **Environment:** Built and tested on VMware (Linux).
*   **Logic:** Implemented using nested switch cases and if-else conditions for comprehensive input validation.
*   **Decimal Precision:** Used `scale=2` within the `bc` calculator for financial accuracy.

## Functions Covered 

*   **`liquidity_ratios()`**: Current Ratio and Quick Ratio.
*   **`solvency_ratios()`**: Debt-Equity and Interest Coverage Ratios.
*   **`activity_ratios()`**: Inventory Turnover and Debtors Turnover.
*   **`profitability_ratios()`**: Gross Profit, Net Profit, and ROI.
*   **`tvm_calculator()`**: Simple Interest and Compound Interest.

## Beyond the Syllabus 

To ensure financial accuracy, I implemented logic that goes beyond standard classroom scripts:
*   **`scale=2`**: Handled decimal precision in the `bc` calculator.
*   **`-l` Math Library**: Used for complex compound interest calculations involving powers.

## Acknowledgments 🙏

A huge thanks to **Darshit Shah sir (FM)** and **Kaushal Shah sir (OS)** for exposing me to these concepts and challenging me to think like an engineer.

---
*Created by Krishna Patel*
