function initTabnav() {

    const tabMenu = document.querySelectorAll('[data-tab="menu"] li');

    const tabContent = document.querySelectorAll('[data-tab="content"] section');

    tabContent.forEach((item, index)=>{
        if(!tabContent[index].classList.contains('ativo')){
            tabContent[0].classList.add('ativo')
        }
    })

        function activeTab(index){
            const direcao = tabContent[index].dataset.anime;

            tabContent.forEach((section) => {
                section.classList.remove('ativo', direcao);
            })
            

            tabContent[index].classList.add('ativo', direcao);

        };

        tabMenu.forEach((item, index) => {
                item.addEventListener('click', () => {
                activeTab(index);
            })
        });
}

initTabnav()
