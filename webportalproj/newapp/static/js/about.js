const teams = document.querySelectorAll(".teams div");

teams.forEach((item) => {
  item.addEventListener("mouseover", () => {
    teams.forEach((el) => el.classList.remove("active"));

    item.classList.add("active");
  });
});