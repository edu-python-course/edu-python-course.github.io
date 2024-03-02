/**
 * Webpack entry point
 */

// add stylesheets to webpack bundle
import "./_static/scss/presentation-common.scss"
import "./_static/scss/presentation-normalization.scss"

// add assets/resources to webpack bundle
import "../assets/icons/check-mark-svgrepo-com.svg"
import "../assets/icons/cross-mark-svgrepo-com.svg"

// import and initialize impress.js presentation framework
import "../assets/impress.js/js/impress"
import "../assets/impress.js/css/impress-common.css"

impress().init()
