# Financial Management Calculator (Linux CUI)

A professional, menu-driven Financial Management CUI project built using Linux shell scripting. This tool provides categorization of ratio analysis and Time Value of Money (TVM) formulas with robust error handling and decimal precision.

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
