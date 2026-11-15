# FerbDora's Lab — Doraemon's Pocket Frugal Design Assistant

A fully interactive, client-ready web application built from your **Google Stitch** project (`369445741058905316`): **"Doraemon's Pocket Frugal Design"**.

> **Tagline:** *Lighter. Cheaper. Buildable the same day.*

---

## 🚀 Features & Architecture

This application unifies all 11 design screens and specs from your Stitch project into a responsive, single-page application (SPA):

### 1. Landing & Overview (`View 1`)
- **Live Optimization Sandbox**: Instant interactive comparison between overbuilt standard solid CAD and FerbDora's frugal lattice truss.
- **Key Impact Telemetry**:
  - **42% Average Mass Saved**
  - **₹1,850 / $18.50 Saved per Build**
  - **< 1.4s ML Surrogate Topology Simulation**
  - **100% Retained Strength (Safety Factor > 2.0x standard)**
- **Ready-to-Fabricate Seed Library**:
  - *Frugal Robotic Car Chassis* (< 375g target, snap-fit DC motor mounts)
  - *Trussed Workshop Stool* (reclaimed pine pallet slats, 120kg payload)
  - *Gravity Water Filter Housing* (modular food-safe bucket nest)
- **Custom Hardware Analyzer**: Natural language input to parse any hardware requirement.

### 2. Design Studio — Step 1: Input Parameters (`View 2`)
- **3-Step Stepper Header** (Input &rarr; AI Redesign &rarr; Local Source).
- **Interactive Performance Controls**:
  - Dynamic **Target Load Slider** (20kg to 250kg) with live kg &amp; lbs readout.
  - **Mechanical Use Selector** (Static/Sitting, Dynamic/Road, Weather Exposed).
  - **Budget &amp; Scrap Preferences** with one-click GPS workshop location detector.
- **Live 2D Blueprint Canvas**:
  - Live technical canvas rendering wireframe bounding box, stress nodes, and dynamic load vector arrows.
  - Real-time material gauge tracking projected mass reductions.
- **Sub-second ML Optimization Trigger**: Animated topology carve progress simulation.

### 3. Step 2: AI Redesign Results (`View 3`)
- **Side-by-Side Hero Comparison**:
  - *Left Spec*: Solid 6mm benchmark block (650g, ₹3,800 / $38, 100% solid mass).
  - *Right Spec*: Optimized Frugal Geometry (375g, ₹1,950 / $19.50, Safety Factor 2.24x, deflection < 0.72mm).
- **Interactive Viewport Mode**:
  - **3D Prototype Render** view.
  - **Stress Heatmap Canvas** showing FEA stress fields (safe at 42.4 MPa).
- **Interactive Bill of Materials (BOM) Table**:
  - Live scrap swapping and itemized cost calculations.
  - **Export BOM CSV** button.
  - **Export DXF / SVG Vector Cut-Sheet** button.

### 4. Step 3: Local Sourcing & Supplier Map (`View 4`)
- **Interactive Sourcing & Bike Route Map**:
  - Interactive canvas map with workshop pin, scrap yards, FabLab tool libraries, and hardware stores.
  - Animated bike loop route (4.3 km round trip, ~38 mins).
- **Supplier Manifest Cards**:
  - *Greenpoint Scrap & Salvage* (0.8 mi • laser plywood & aluminum offcuts).
  - *Community FabLab & Tool Library* (1.4 mi • 3D printers & laser cutter).
  - *Hardware Co-op Depot* (2.1 mi • M3/M4 fastener bins).
- **Download Full Maker Package**: Generates Markdown & BOM package.

### 5. Multi-Currency Support & Saved Projects
- Seamless currency switch between **₹ (INR)** and **$ (USD)**.
- Local bookmarking and saved project management.

---

## 📂 Directory Structure

```text
doraemons-pocket/
├── index.html            # Main unified single-page web application
├── serve.bat             # One-click Windows runner
├── README.md             # Project documentation
├── assets/               # Downloaded Stitch imagery & 3D models
│   ├── chassis-benchmark.jpg
│   ├── chassis-optimized.jpg
│   └── ...
├── clean-screens/        # Individual standalone HTML exports for each Stitch screen
│   ├── a254686be1dc4fb78ea806158491169b.html  # Landing Page
│   ├── 7fb34d2007be4fba831f76f06ef75cb2.html  # Step 1: Input Parameters
│   ├── 28cf013860714575b1fb733a56b72e44.html  # Step 2: Redesign Results
│   ├── d2c2e438acab43f8b17b27f011cf773f.html  # Step 3: Source Map
│   └── ...
└── stitch-data/          # Raw API responses and design tokens
```

---

## 🏃 Quick Start

Simply open [index.html](file:///C:/Users/rockw/.gemini/antigravity/scratch/doraemons-pocket/index.html) in your favorite web browser, or double-click `serve.bat`!
