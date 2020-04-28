using System;
using System.Collections.Generic;
using System.Globalization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

/// <summary>
/// Summary description for TideData
/// </summary>

public partial class TideData
{
    [JsonProperty("status")]
    public long Status { get; set; }

    [JsonProperty("callCount")]
    public long CallCount { get; set; }

    [JsonProperty("copyright")]
    public string Copyright { get; set; }

    [JsonProperty("requestLat")]
    public double RequestLat { get; set; }

    [JsonProperty("requestLon")]
    public double RequestLon { get; set; }

    [JsonProperty("responseLat")]
    public double ResponseLat { get; set; }

    [JsonProperty("responseLon")]
    public double ResponseLon { get; set; }

    [JsonProperty("atlas")]
    public string Atlas { get; set; }

    [JsonProperty("station")]
    public string Station { get; set; }

    [JsonProperty("requestDatum")]
    public string RequestDatum { get; set; }

    [JsonProperty("responseDatum")]
    public string ResponseDatum { get; set; }

    [JsonProperty("heights")]
    public List<Height> Heights { get; set; }

    [JsonProperty("extremes")]
    public List<object> Extremes { get; set; }
}

public partial class Height
{
    [JsonProperty("dt")]
    public long Dt { get; set; }

    [JsonProperty("date")]
    public string Date { get; set; }

    [JsonProperty("height")]
    public double HeightHeight { get; set; }
}

public partial class Extremes
{
    [JsonProperty("dt")]
    public long Dt { get; set; }

    [JsonProperty("date")]
    public string Date { get; set; }

    [JsonProperty("height")]
    public double HeightHeight { get; set; }

    [JsonProperty("type")]
    public double type { get; set; }
}
