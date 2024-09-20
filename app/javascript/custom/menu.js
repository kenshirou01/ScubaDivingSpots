// トグルリスナーを追加する
function addToggleListener(selected_id, menu_id, toggle_class) {
  // selected_id を持つ要素を取得
  let selected_element = document.querySelector(`#${selected_id}`);

  // selected_element が存在する場合にのみイベントリスナーを追加
  if (selected_element) {
    selected_element.addEventListener("click", function(event) {
      event.preventDefault();
      // menu_id を持つ要素を取得
      let menu = document.querySelector(`#${menu_id}`);

      // menu が存在する場合にのみクラスをトグル
      if (menu) {
        menu.classList.toggle(toggle_class);
      }
    });
  }
}

// クリックをリッスンするトグルリスナーを追加する
document.addEventListener("turbo:load", function() {
  addToggleListener("hamburger", "navbar-menu",   "collapse");
  addToggleListener("account",   "dropdown-menu", "active");
});
