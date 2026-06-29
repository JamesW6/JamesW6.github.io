<script>
 import portrait from '$lib/assets/portrait.webp?inline'
</script>
<div id="webpage"  class="py-10 grid grid-cols-1 gap-12 wrap justify-items-center bg-rose-100 font-montserrat">
  <div id = "content" class="grid grid-cols-1 justify-items-start gap-12 lg:max-inline-1/3 p-3 min-h-screen">
    <div id="nav" class="flex items-center gap-2 inline-full">
      <a href="#projects" class="hover:underline">Projects</a>
      <a href="#experience" class="hover:underline">Experience</a>
      <a href="#contact" class="hover:underline">Contact</a>
      <a href="https://drive.google.com/file/d/1glYZ0U-_CuL7XYrxyOHnqrb-ppUt3JEm/view?usp=sharing" target="_blank" class="p-1 bg-black text-white hover:bg-rose-300 hover:text-black">Resume <span class="icon-[solar--arrow-right-up-bold-duotone]"></span></a>
      <p class="text-xs grow text-right invisible md:visible">jow257 [at] pitt [dot] edu</p>
    </div>

    <div id="highlights" class="grid grid-cols-2 max-h-40">
      <div class="inline-max">
        <h1 class="inline-5 text-2xl font-bold">James Widmer</h1>
        <p>Sophomore @ Pitt</p>
        <p>Incoming Discrete Mathematics UTA @ Pitt</p>
        <p class="text-xs py-1">Seeking Summer 2027 Internship Roles</p>
      </div>
      <img class="invisible lg:visible justify-self-right object-contain h-40 inline-full" alt="portrait of james" src={portrait} />
    </div>


    <div class="border border-black inline-full max-h-px"></div>

    <div id="highlights"> 
      <p>
        Hi, I'm James, a rising sophomore at Pitt studying <b>computer science</b> with a minor in mathematics and a vim and linux hobbyist. I've previously worked as
        web designer with the Osher Lifelong Learning Institute at Pitt and participated in an internship-like environment with the 
        Computer Science Club's Devlab last semester, building the Pitt Meals Project. I'm currently looking for
        <mark class="bg-black text-white text-md">internship</mark> positions starting in 
        <mark class="bg-black text-white text-md">Summer 2027</mark>, feel free to reach out and connect! Outside of tech I'm into
        rock climbing and watching movies but I'm always trying new things.
      </p>
    </div>

    <div class="border border-black inline-full max-h-px"></div>

    <div class="inline-full" id="projects">
      <div class="grid grid-cols-1 gap-4">
        <h1 class="text-2xl">Projects</h1>
        <p class="">All my projects live on Github, and i've shared a few of my favorites. More to Come.</p>
        <a class = "justify-self-center px-2 py-4 my-1 inline-3/4 text-center border border-black hover:border-white hover:text-white hover:bg-black" href="https://github.com/jamesw6" target="_blank">github.com/jamesw6</a>
      </div>
      <div class="grid grid-cols-2 grid-rows-1 auto-rows-max py-6">
        <a href="https://github.com/NatnaelTegegne/piky-park" target="_blank">
          <div class="border-2 border-black h-full hover:bg-rose-300" style="border-right:0">
              <p class="text-lg">PikiPark</p>
              <p class="text-sm">ML model for finding free parking spaces</p>
              <span class="icon-[solar--arrow-right-up-bold-duotone]"></span>
          </div>
        </a>
        <a href="https://github.com/JamesW6/JamesW6.github.io" target="_blank">
          <div class="border-2 border-black h-full hover:bg-rose-300">
            <p class="text-lg">This Website</p>
            <p class="text-sm">My dive into web development, deployment, and design</p>
            <span class="icon-[solar--arrow-right-up-bold-duotone]"></span>
          </div>
        </a>
      </div>
    </div>

    <div class="border border-black inline-full max-h-px"></div>
    
    <div id="experience" class="grid grid-cols-1">
      <h1 class="text-2xl py-4">Experience</h1>
      <div class="border-2 border-black grid grid-cols-2" style="border-bottom:0">
        <h1 class="text-lg font-bold">Pitt Meals Website</h1>
        <p class="text-end">February-May 2026</p>
        <p class="text-sm col-span-2">Developed a website with PittCSC to track available food on campus daily and recommend healthy foods. Worked with <mark class="bg-black text-white text-md">AGILE</mark> structure in an internship-like environment</p>
      </div>
      <div class="border-2 border-black grid grid cols-2">
        <h1 class="text-lg font-bold">Osher Lifelong Learning Community</h1>
        <p class="text-right">February-May 2026</p>
        <p class="text-sm col-span-2">Designing an updated version of local non profit’s website to maximize accessibility for non-technically experienced users. Had bi-weekly checkins with a supervisor to ensure smooth progress</p>
      </div>
    </div>

    <div class="border border-black inline-full max-h-px"></div>
    <div id="contact" class="inline-full grid grid-cols-1 grid-rows-1 gap-2">
      <h1 class="text-2xl">Let's get in touch!</h1>
      <p class="text-sm">Best way to reach out is email, but I check LinkedIn as well</p>
      <div class="grid grid-cols-2 py-4 h-full">
        <div class="border border-black" style="border-right:0">
          <p>jow257 [at] pitt [dot] edu</p>
        </div>
        <a href = https://linkedin.com/in/jameswidmer12>
          <div class="border border-black hover:bg-rose-300 h-full flex"> 
            <p class="break-all px-1">linkedin.com/in/jameswidmer12</p>
            <span class="icon-[solar--arrow-right-up-bold-duotone]"></span>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>


